.class public final enum Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;
.super Ljava/lang/Enum;
.source "SubscriptionStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

.field public static final enum CONNECTION_ERROR:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

.field public static final enum GRP_SHUTDOWN:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

.field public static final enum INIT:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

.field public static final enum SECURITY_CHECK_ERROR:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

.field public static final enum SUCCESS:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

.field public static final enum TIMEOUT_ERROR:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

.field public static final enum UNKNOWN_ERROR:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

.field public static final enum VLSN_NOT_AVAILABLE:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 21
    new-instance v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->INIT:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .line 23
    new-instance v1, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->SUCCESS:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .line 25
    new-instance v3, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    const-string v5, "VLSN_NOT_AVAILABLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->VLSN_NOT_AVAILABLE:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .line 27
    new-instance v5, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    const-string v7, "GRP_SHUTDOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->GRP_SHUTDOWN:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .line 29
    new-instance v7, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    const-string v9, "CONNECTION_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->CONNECTION_ERROR:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .line 31
    new-instance v9, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    const-string v11, "TIMEOUT_ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->TIMEOUT_ERROR:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .line 33
    new-instance v11, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    const-string v13, "UNKNOWN_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->UNKNOWN_ERROR:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .line 35
    new-instance v13, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    const-string v15, "SECURITY_CHECK_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->SECURITY_CHECK_ERROR:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    .line 19
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->$VALUES:[Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;
    .locals 1

    .line 19
    sget-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->$VALUES:[Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    return-object v0
.end method
