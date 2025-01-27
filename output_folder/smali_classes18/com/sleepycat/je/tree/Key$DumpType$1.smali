.class final Lcom/sleepycat/je/tree/Key$DumpType$1;
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

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/tree/Key$DumpType;-><init>(Ljava/lang/String;Lcom/sleepycat/je/tree/Key$1;)V

    return-void
.end method


# virtual methods
.method dumpByteArrayInternal(Ljava/lang/StringBuilder;[B)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "b"    # [B

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 44
    aget-byte v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
