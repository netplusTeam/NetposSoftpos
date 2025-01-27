.class final Lorg/apache/sshd/common/util/Readable$1;
.super Ljava/lang/Object;
.source "Readable.java"

# interfaces
.implements Lorg/apache/sshd/common/util/Readable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/util/Readable;->readable(Ljava/nio/ByteBuffer;)Lorg/apache/sshd/common/util/Readable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$buffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/apache/sshd/common/util/Readable$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/sshd/common/util/Readable$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public getRawBytes([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/util/Readable$1;->val$buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 50
    return-void
.end method
