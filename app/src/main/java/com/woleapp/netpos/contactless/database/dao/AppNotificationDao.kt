package com.woleapp.netpos.contactless.database.dao

import androidx.lifecycle.LiveData
import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.Query
import androidx.room.Update
import com.woleapp.netpos.contactless.model.AppCampaignModel
import io.reactivex.Single

@Dao
interface AppNotificationDao {

    @Insert
    fun insertMessage(message: AppCampaignModel): Single<Long>

    @Query("SELECT * FROM appNotification ORDER BY id DESC")
    fun getAllMessages(): LiveData<List<AppCampaignModel>>

    @Query("SELECT * FROM appNotification WHERE hasBeenRead = :read ORDER BY id DESC")
    fun getAllMessagesByHasBeenReadStatus(read: Boolean): LiveData<List<AppCampaignModel>>

    @Update
    fun markMessageHasRead(message: AppCampaignModel): Single<Int>

    @Delete
    fun deleteMessage(message: AppCampaignModel): Single<Int>
}
