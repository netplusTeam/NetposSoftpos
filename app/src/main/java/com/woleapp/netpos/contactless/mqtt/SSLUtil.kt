package com.woleapp.netpos.contactless.mqtt

import android.content.Context
import android.util.Base64
import com.woleapp.netpos.contactless.BuildConfig
import com.woleapp.netpos.contactless.util.decryptOpenSslFile
import java.io.ByteArrayInputStream
import java.io.InputStream
import java.security.KeyFactory
import java.security.KeyStore
import java.security.PrivateKey
import java.security.cert.Certificate
import java.security.cert.CertificateFactory
import java.security.cert.X509Certificate
import java.security.spec.PKCS8EncodedKeySpec
import javax.net.ssl.KeyManagerFactory
import javax.net.ssl.SSLContext
import javax.net.ssl.SSLSocketFactory
import javax.net.ssl.TrustManagerFactory

object SSLUtil {
    fun getTrustManagerFactory(context: Context): TrustManagerFactory? {
        // load CA certificate
        val caCert =
            getDecryptedX509Certificate(context, if (BuildConfig.APPMODE_PROD) "cacert.pem.enc" else "test_cacert.pem.enc")
        val caKs = KeyStore.getInstance(KeyStore.getDefaultType())
        caKs.load(null, null)
        caKs.setCertificateEntry("ca-certificate", caCert)
        val tmf = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm())
        tmf.init(caKs)
        return tmf
    }


    fun getKeyMangerFactory(context: Context): KeyManagerFactory? {
        val password = "netpos_password"
        // load client certificate
        val cert = getDecryptedX509Certificate(context, if (BuildConfig.APPMODE_PROD) "netpos_device.pem.enc" else "netpos_client_cert.pem.enc")

        val key = getFromString(context)
        // client key and certificates are sent to server so it can authenticate us
        val ks = KeyStore.getInstance(KeyStore.getDefaultType())
        ks.load(null, null)
        ks.setCertificateEntry("certificate", cert)
        ks.setKeyEntry(
            "private-key",
            key,
            password.toCharArray(),
            arrayOf<Certificate>(cert)
        )
        val kmf = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm())
        kmf.init(ks, password.toCharArray())
        return kmf
    }

    @Throws(Exception::class)
    @JvmStatic
    fun getFromString(context: Context): PrivateKey? {
        var reader = String(decryptOpenSslFile(context, if (BuildConfig.APPMODE_PROD) "device.key.enc" else "netpos_client_key.key.enc"))
        reader = reader.replace("-----BEGIN RSA PRIVATE KEY-----\n", "")
        reader = reader.replace("-----END RSA PRIVATE KEY-----", "")
        // Base64 decode the data
        //Timber.e("\n$reader")
        val encoded: ByteArray = Base64.decode(reader, Base64.DEFAULT)
        val keySpec = PKCS8EncodedKeySpec(encoded)
        val kf: KeyFactory = KeyFactory.getInstance("RSA")
        return kf.generatePrivate(keySpec)
    }

//    @JvmStatic
//    fun getX509Certificate(inputStream: InputStream): X509Certificate {
//        val cf: CertificateFactory = CertificateFactory.getInstance("X.509")
//        return inputStream.use {
//            cf.generateCertificate(it) as X509Certificate
//        }
//    }


    private fun getDecryptedX509Certificate(context: Context, encryptedFileName: String): X509Certificate {
        val decryptedData = decryptOpenSslFile(context, encryptedFileName)
        val inputStream = ByteArrayInputStream(decryptedData)
        return getX509Certificate(inputStream)
    }

    // The getX509Certificate function as provided
    private fun getX509Certificate(inputStream: InputStream): X509Certificate {
        val cf: CertificateFactory = CertificateFactory.getInstance("X.509")
        return inputStream.use {
            cf.generateCertificate(it) as X509Certificate
        }
    }

    fun getSSLFactory(context: Context): SSLSocketFactory? {
        // finally, create SSL socket factory
        val sslContext = SSLContext.getInstance("TLSv1")
        sslContext.init(
            getKeyMangerFactory(context)!!.keyManagers,
            getTrustManagerFactory(context)!!.trustManagers,
            null
        )

        return sslContext.socketFactory
    }
}