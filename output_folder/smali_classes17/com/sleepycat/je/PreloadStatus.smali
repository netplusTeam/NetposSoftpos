.class public Lcom/sleepycat/je/PreloadStatus;
.super Ljava/lang/Object;
.source "PreloadStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EXCEEDED_TIME:Lcom/sleepycat/je/PreloadStatus;

.field public static final FILLED_CACHE:Lcom/sleepycat/je/PreloadStatus;

.field public static final SUCCESS:Lcom/sleepycat/je/PreloadStatus;

.field public static final USER_HALT_REQUEST:Lcom/sleepycat/je/PreloadStatus;

.field private static final serialVersionUID:J = 0x35d9dc39L


# instance fields
.field private statusName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/sleepycat/je/PreloadStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/PreloadStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/PreloadStatus;->SUCCESS:Lcom/sleepycat/je/PreloadStatus;

    .line 50
    new-instance v0, Lcom/sleepycat/je/PreloadStatus;

    const-string v1, "FILLED_CACHE"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/PreloadStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/PreloadStatus;->FILLED_CACHE:Lcom/sleepycat/je/PreloadStatus;

    .line 57
    new-instance v0, Lcom/sleepycat/je/PreloadStatus;

    const-string v1, "EXCEEDED_TIME"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/PreloadStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/PreloadStatus;->EXCEEDED_TIME:Lcom/sleepycat/je/PreloadStatus;

    .line 64
    new-instance v0, Lcom/sleepycat/je/PreloadStatus;

    const-string v1, "USER_HALT_REQUEST"

    invoke-direct {v0, v1}, Lcom/sleepycat/je/PreloadStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/PreloadStatus;->USER_HALT_REQUEST:Lcom/sleepycat/je/PreloadStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusName"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sleepycat/je/PreloadStatus;->statusName:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreloadStatus."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/PreloadStatus;->statusName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
