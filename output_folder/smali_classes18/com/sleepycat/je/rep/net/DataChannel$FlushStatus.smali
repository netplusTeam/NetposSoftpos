.class public final enum Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
.super Ljava/lang/Enum;
.source "DataChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/net/DataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlushStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

.field public static final enum AGAIN:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

.field public static final enum CONTENTION:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

.field public static final enum DISABLED:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

.field public static final enum DONE:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

.field public static final enum SO_WAIT_WRITE:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 98
    new-instance v0, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->DISABLED:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    .line 101
    new-instance v1, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    const-string v3, "DONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->DONE:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    .line 104
    new-instance v3, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    const-string v5, "AGAIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->AGAIN:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    .line 107
    new-instance v5, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    const-string v7, "SO_WAIT_WRITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->SO_WAIT_WRITE:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    .line 110
    new-instance v7, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    const-string v9, "CONTENTION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->CONTENTION:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    .line 95
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->$VALUES:[Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 95
    const-class v0, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;
    .locals 1

    .line 95
    sget-object v0, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->$VALUES:[Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    return-object v0
.end method
