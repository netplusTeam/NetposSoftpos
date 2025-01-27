.class final enum Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
.super Ljava/lang/Enum;
.source "SSLDataChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HSProcStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

.field public static final enum AGAIN:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

.field public static final enum APP_WAIT:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

.field public static final enum CONTENTION:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

.field public static final enum DONE:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

.field public static final enum SO_WAIT_READ:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

.field public static final enum SO_WAIT_WRITE:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 837
    new-instance v0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    const-string v1, "CONTENTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->CONTENTION:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    .line 840
    new-instance v1, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    const-string v3, "SO_WAIT_READ"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->SO_WAIT_READ:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    .line 843
    new-instance v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    const-string v5, "SO_WAIT_WRITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->SO_WAIT_WRITE:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    .line 846
    new-instance v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    const-string v7, "AGAIN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->AGAIN:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    .line 849
    new-instance v7, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    const-string v9, "APP_WAIT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->APP_WAIT:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    .line 852
    new-instance v9, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    const-string v11, "DONE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->DONE:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    .line 835
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->$VALUES:[Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 835
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 835
    const-class v0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;
    .locals 1

    .line 835
    sget-object v0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->$VALUES:[Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    return-object v0
.end method
