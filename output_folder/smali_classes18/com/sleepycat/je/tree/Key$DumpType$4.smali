.class final Lcom/sleepycat/je/tree/Key$DumpType$4;
.super Lcom/sleepycat/je/tree/Key$DumpType;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/tree/Key$DumpType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/tree/Key$DumpType;-><init>(Ljava/lang/String;Lcom/sleepycat/je/tree/Key$1;)V

    return-void
.end method


# virtual methods
.method dumpByteArrayInternal(Ljava/lang/StringBuilder;[B)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "b"    # [B

    .line 69
    array-length v0, p2

    .line 70
    .local v0, "len":I
    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v2, " byte]"

    goto :goto_0

    :cond_0
    const-string v2, " bytes]"

    .line 71
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    return-void
.end method
