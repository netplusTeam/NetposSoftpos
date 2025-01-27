.class final enum Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;
.super Ljava/lang/Enum;
.source "SubscriptionProcessMessageThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ExitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

.field public static final enum IMMEDIATE:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

.field public static final enum NONE:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 218
    new-instance v0, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;->NONE:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    .line 219
    new-instance v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    const-string v3, "IMMEDIATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    .line 217
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;->$VALUES:[Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 217
    const-class v0, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;
    .locals 1

    .line 217
    sget-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;->$VALUES:[Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    return-object v0
.end method
