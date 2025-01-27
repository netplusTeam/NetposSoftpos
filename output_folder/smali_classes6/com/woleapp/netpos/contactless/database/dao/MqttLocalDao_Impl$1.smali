.class Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "MqttLocalDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;
    .param p2, "database"    # Landroidx/room/RoomDatabase;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$1;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)V
    .locals 3
    .param p1, "stmt"    # Landroidx/sqlite/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 46
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;->getTopic()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 47
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 51
    :goto_0
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;->getData()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 52
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 56
    :goto_1
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;->getCause()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 57
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;->getCause()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 61
    :goto_2
    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 62
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 38
    check-cast p2, Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;

    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "INSERT OR ABORT INTO `mqttEvents` (`topic`,`data`,`cause`,`id`) VALUES (?,?,?,nullif(?, 0))"

    return-object v0
.end method
