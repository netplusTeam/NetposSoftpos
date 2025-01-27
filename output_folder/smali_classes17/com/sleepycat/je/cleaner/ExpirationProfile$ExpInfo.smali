.class Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;
.super Ljava/lang/Object;
.source "ExpirationProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/ExpirationProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpInfo"
.end annotation


# instance fields
.field currentExpiredBytes:I

.field previousExpiredBytes:I

.field final serializedForm:[B


# direct methods
.method constructor <init>([BI)V
    .locals 1
    .param p1, "serializedForm"    # [B
    .param p2, "currentExpiredBytes"    # I

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->currentExpiredBytes:I

    .line 565
    iput v0, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->previousExpiredBytes:I

    .line 570
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->serializedForm:[B

    .line 571
    iput p2, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->currentExpiredBytes:I

    .line 572
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ExpInfo currentBytes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->currentExpiredBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExpirationProfile$ExpInfo;->serializedForm:[B

    .line 577
    invoke-static {v1}, Lcom/sleepycat/je/cleaner/ExpirationTracker;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    return-object v0
.end method
