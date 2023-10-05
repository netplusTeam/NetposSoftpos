package com.woleapp.netpos.contactless.domain.implementations

import com.woleapp.netpos.contactless.domain.DataEncryptionAndDecryption
import com.woleapp.netpos.contactless.util.UtilityParam.STRING_SECRET_KEY
import io.jsonwebtoken.Jwts
import io.jsonwebtoken.SignatureAlgorithm
import io.jsonwebtoken.security.Keys
import java.security.Key
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class DataEncryptionJwt @Inject constructor() : DataEncryptionAndDecryption {
    private val key: Key = Keys.hmacShaKeyFor(STRING_SECRET_KEY.toByteArray())

    override fun encryptData(data: String): String {
        return Jwts.builder()
            .setSubject(data) // You can use the subject to store your data
            .signWith(key, SignatureAlgorithm.HS256)
            .compact()
    }

    override fun decryptData(encryptedData: String): String {
        return Jwts.parserBuilder()
            .setSigningKey(key)
            .build()
            .parse(encryptedData)
            .body.toString()
    }

}
