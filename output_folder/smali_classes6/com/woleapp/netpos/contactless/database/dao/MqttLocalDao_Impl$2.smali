.class Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$2;
.super Landroidx/room/SharedSQLiteStatement;
.source "MqttLocalDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 64
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl$2;->this$0:Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 2

    .line 67
    const-string v0, "DELETE FROM mqttEvents"

    .line 68
    .local v0, "_query":Ljava/lang/String;
    const-string v1, "DELETE FROM mqttEvents"

    return-object v1
.end method
