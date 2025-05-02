package com.woleapp.netpos.contactless.taponphone.verve.util
import android.media.AudioAttributes
import android.media.AudioFormat
import android.media.AudioTrack
import android.os.Build
import java.io.ByteArrayOutputStream
import java.io.IOException
object SoundGenerator {
    private const val SAMPLE_RATE = 44100 // Standard 44.1 KHz
    private var audioTrack: AudioTrack? = null
    private var volume = 0.5f
    fun playSound(frequencyTone: Int, durationMS: Int, intervalMs: Int, count: Int) {
        val audioBuffer = ByteArrayOutputStream()
        for (i in 0 until count) {
            // first bip
            try {
                audioBuffer.write(generateWave(durationMS.toDouble(), frequencyTone))
                audioBuffer.write(generateWave(intervalMs.toDouble(), 0))
            } catch (e: IOException) {
                e.printStackTrace()
            }
        }
        try {
            val bufferSize = AudioTrack.getMinBufferSize(
                SAMPLE_RATE,
                AudioFormat.CHANNEL_OUT_MONO,
                AudioFormat.ENCODING_PCM_16BIT
            )
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                audioTrack = AudioTrack.Builder().setAudioAttributes(
                    AudioAttributes.Builder().setUsage(AudioAttributes.USAGE_NOTIFICATION)
                        .setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)
                        .build()
                )
                    .setAudioFormat(
                        AudioFormat.Builder().setEncoding(AudioFormat.ENCODING_PCM_16BIT)
                            .setSampleRate(SAMPLE_RATE)
                            .setChannelMask(AudioFormat.CHANNEL_OUT_MONO)
                            .build()
                    )
                    .setBufferSizeInBytes(bufferSize)
                    .build()
            }
            // Sanity Check for max volume, set after write method to handle issue in android
            val maxVolume = AudioTrack.getMaxVolume()
            if (volume > maxVolume) {
                volume = maxVolume
            } else if (volume < 0) {
                volume = 0f
            }
            audioTrack!!.setVolume(volume)
            audioTrack!!.play() // Play the track
            audioTrack!!.write(
                audioBuffer.toByteArray(),
                0,
                audioBuffer.toByteArray().size
            ) // Load the track
        } catch (e: Exception) {
            e.printStackTrace()
        }
        stopTone()
    }
    private fun generateWave(duration: Double, frequencyTone: Int): ByteArray {
        var dnumSamples = duration / 1000 * SAMPLE_RATE
        dnumSamples = Math.ceil(dnumSamples)
        val numSamples = dnumSamples.toInt()
        val sample = DoubleArray(numSamples)
        val generatedSnd = ByteArray(2 * numSamples)
        for (i in 0 until numSamples) {      // Fill the sample array
            sample[i] = Math.sin(frequencyTone * 2 * Math.PI * i / SAMPLE_RATE)
        }
        // convert to 16 bit pcm sound array
        // assumes the sample buffer is normalized.
        var idx = 0
        var i: Int
        val ramp = numSamples / 20 // Amplitude ramp as a percent of sample count
        i = 0
        while (i < ramp) {
            // Ramp amplitude up (to avoid clicks)
            // Ramp up to maximum
            val `val` = (sample[i] * 32767 * i / ramp).toInt().toShort()
            // in 16 bit wav PCM, first byte is the low order byte
            generatedSnd[idx++] = (`val`.toInt() and 0x00ff).toByte()
            generatedSnd[idx++] = (`val`.toInt() and 0xff00 ushr 8).toByte()
            ++i
        }
        i = ramp
        while (i < numSamples - ramp) {
            // Max amplitude for most of the samples
            // scale to maximum amplitude
            val `val` = (sample[i] * 32767).toInt().toShort()
            // in 16 bit wav PCM, first byte is the low order byte
            generatedSnd[idx++] = (`val`.toInt() and 0x00ff).toByte()
            generatedSnd[idx++] = (`val`.toInt() and 0xff00 ushr 8).toByte()
            ++i
        }
        i = numSamples - ramp
        while (i < numSamples) {
            // Ramp amplitude down
            // Ramp down to zero
            val `val` = (sample[i] * 32767 * (numSamples - i) / ramp).toInt().toShort()
            // in 16 bit wav PCM, first byte is the low order byte
            generatedSnd[idx++] = (`val`.toInt() and 0x00ff).toByte()
            generatedSnd[idx++] = (`val`.toInt() and 0xff00 ushr 8).toByte()
            ++i
        }
        return generatedSnd
    }
    fun stopTone() {
        if (audioTrack != null && audioTrack!!.state == AudioTrack.PLAYSTATE_PLAYING) {
            audioTrack!!.stop()
            audioTrack!!.release()
        }
    }
}