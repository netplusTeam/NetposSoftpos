.class public final enum Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;
.super Ljava/lang/Enum;
.source "DataChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/net/DataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloseAsyncStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

.field public static final enum DONE:Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

.field public static final enum SO_WAIT_READ:Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

.field public static final enum SO_WAIT_WRITE:Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 225
    new-instance v0, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

    const-string v1, "SO_WAIT_READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;->SO_WAIT_READ:Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

    .line 228
    new-instance v1, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

    const-string v3, "SO_WAIT_WRITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;->SO_WAIT_WRITE:Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

    .line 231
    new-instance v3, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;->DONE:Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

    .line 222
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;->$VALUES:[Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 222
    const-class v0, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;
    .locals 1

    .line 222
    sget-object v0, Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;->$VALUES:[Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/net/DataChannel$CloseAsyncStatus;

    return-object v0
.end method
