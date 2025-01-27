.class public final Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;
.super Lcom/woleapp/netpos/contactless/database/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field private volatile _appNotificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

.field private volatile _mqttLocalDao:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

.field private volatile _transactionResponseDao:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 34
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 34
    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    .line 187
    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->assertNotMainThread()V

    .line 188
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 190
    .local v2, "_db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    :try_start_0
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->beginTransaction()V

    .line 191
    const-string v3, "DELETE FROM `TransactionResponse`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    const-string v3, "DELETE FROM `mqttEvents`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string v3, "DELETE FROM `appNotification`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->endTransaction()V

    .line 197
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 198
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void

    .line 196
    :catchall_0
    move-exception v3

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->endTransaction()V

    .line 197
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 198
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 201
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 180
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 181
    .local v0, "_shadowTablesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v2

    .line 182
    .local v1, "_viewTables":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v2, Landroidx/room/InvalidationTracker;

    const-string v3, "TransactionResponse"

    const-string v4, "mqttEvents"

    const-string v5, "appNotification"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v2
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .param p1, "configuration"    # Landroidx/room/DatabaseConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 43
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl$1;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl$1;-><init>(Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;I)V

    const-string v2, "bee047e789d9fc0c4dabff202abb64a2"

    const-string v3, "af54c45fb58ab45b14603d81cfd9de04"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v0, "_openCallback":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 171
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v1

    .line 174
    .local v1, "_sqliteConfig":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    .line 175
    .local v2, "_helper":Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    return-object v2
.end method

.method public getAppNotificationDao()Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_appNotificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_appNotificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    return-object v0

    .line 246
    :cond_0
    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_appNotificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_appNotificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_appNotificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    monitor-exit p0

    return-object v0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    .local v0, "_typeConvertersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/util/List<Ljava/lang/Class<*>;>;>;"
    const-class v1, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    invoke-static {}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-class v1, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    invoke-static {}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-class v1, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    invoke-static {}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-object v0
.end method

.method public mqttLocalDao()Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_mqttLocalDao:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_mqttLocalDao:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    return-object v0

    .line 232
    :cond_0
    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_mqttLocalDao:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_mqttLocalDao:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_mqttLocalDao:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;

    monitor-exit p0

    return-object v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public transactionResponseDao()Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_transactionResponseDao:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_transactionResponseDao:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    return-object v0

    .line 218
    :cond_0
    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_transactionResponseDao:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    if-nez v0, :cond_1

    .line 220
    new-instance v0, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_transactionResponseDao:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/database/AppDatabase_Impl;->_transactionResponseDao:Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    monitor-exit p0

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
