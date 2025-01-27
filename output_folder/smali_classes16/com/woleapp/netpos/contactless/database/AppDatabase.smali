.class public abstract Lcom/woleapp/netpos/contactless/database/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/database/AppDatabase;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "getAppNotificationDao",
        "Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;",
        "mqttLocalDao",
        "Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;",
        "transactionResponseDao",
        "Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;",
        "Companion",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;

.field private static volatile INSTANCE:Lcom/woleapp/netpos/contactless/database/AppDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/database/AppDatabase;->Companion:Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/woleapp/netpos/contactless/database/AppDatabase;
    .locals 1

    .line 16
    sget-object v0, Lcom/woleapp/netpos/contactless/database/AppDatabase;->INSTANCE:Lcom/woleapp/netpos/contactless/database/AppDatabase;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/woleapp/netpos/contactless/database/AppDatabase;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/woleapp/netpos/contactless/database/AppDatabase;

    .line 16
    sput-object p0, Lcom/woleapp/netpos/contactless/database/AppDatabase;->INSTANCE:Lcom/woleapp/netpos/contactless/database/AppDatabase;

    return-void
.end method


# virtual methods
.method public abstract getAppNotificationDao()Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;
.end method

.method public abstract mqttLocalDao()Lcom/woleapp/netpos/contactless/database/dao/MqttLocalDao;
.end method

.method public abstract transactionResponseDao()Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;
.end method
