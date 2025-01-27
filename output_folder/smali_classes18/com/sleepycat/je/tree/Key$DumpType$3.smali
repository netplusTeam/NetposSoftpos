.class final Lcom/sleepycat/je/tree/Key$DumpType$3;
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

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/tree/Key$DumpType;-><init>(Ljava/lang/String;Lcom/sleepycat/je/tree/Key$1;)V

    return-void
.end method


# virtual methods
.method dumpByteArrayInternal(Ljava/lang/StringBuilder;[B)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "b"    # [B

    .line 62
    invoke-static {p2}, Lcom/sleepycat/utilint/StringUtils;->fromUTF8([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    return-void
.end method
