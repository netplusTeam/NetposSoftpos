package com.woleapp.netpos.contactless.database

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import androidx.room.TypeConverters
import com.danbamitale.epmslib.entities.TransactionResponse
import com.woleapp.netpos.contactless.database.dao.AppNotificationDao
import com.woleapp.netpos.contactless.database.dao.MqttLocalDao
import com.woleapp.netpos.contactless.database.dao.TransactionResponseDao
import com.woleapp.netpos.contactless.model.AppCampaignModel
import com.woleapp.netpos.contactless.model.MqttEventsLocal
import com.woleapp.netpos.contactless.util.RoomTypeConverters

@Database(entities = [TransactionResponse::class, MqttEventsLocal::class, AppCampaignModel::class], version = 10, exportSchema = false,)
@TypeConverters(RoomTypeConverters::class)
abstract class AppDatabase : RoomDatabase() {

    abstract fun transactionResponseDao(): TransactionResponseDao
    abstract fun mqttLocalDao(): MqttLocalDao
    abstract fun getAppNotificationDao(): AppNotificationDao

    companion object {
        @Volatile
        private var INSTANCE: AppDatabase? = null

        fun getDatabaseInstance(context: Context) = INSTANCE ?: synchronized(this) {
            INSTANCE ?: buildDatabase(context).also { INSTANCE = it }
        }

        private fun buildDatabase(context: Context) =
            Room.databaseBuilder(context, AppDatabase::class.java, "netpos-db")
                .allowMainThreadQueries()
                .fallbackToDestructiveMigration()
                .build()
    }
}
