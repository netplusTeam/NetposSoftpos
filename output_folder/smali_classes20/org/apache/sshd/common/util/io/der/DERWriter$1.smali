.class Lorg/apache/sshd/common/util/io/der/DERWriter$1;
.super Lorg/apache/sshd/common/util/io/der/DERWriter;
.source "DERWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/util/io/der/DERWriter;->startSequence()Lorg/apache/sshd/common/util/io/der/DERWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/common/util/io/der/DERWriter;

.field final synthetic val$baos:Ljava/io/ByteArrayOutputStream;

.field final synthetic val$dataWritten:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$encloser:Lorg/apache/sshd/common/util/io/der/DERWriter;


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/util/io/der/DERWriter;Ljava/io/OutputStream;Ljava/io/ByteArrayOutputStream;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/apache/sshd/common/util/io/der/DERWriter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/util/io/der/DERWriter;
    .param p2, "stream"    # Ljava/io/OutputStream;

    .line 62
    iput-object p1, p0, Lorg/apache/sshd/common/util/io/der/DERWriter$1;->this$0:Lorg/apache/sshd/common/util/io/der/DERWriter;

    iput-object p3, p0, Lorg/apache/sshd/common/util/io/der/DERWriter$1;->val$baos:Ljava/io/ByteArrayOutputStream;

    iput-object p4, p0, Lorg/apache/sshd/common/util/io/der/DERWriter$1;->val$dataWritten:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lorg/apache/sshd/common/util/io/der/DERWriter$1;->val$encloser:Lorg/apache/sshd/common/util/io/der/DERWriter;

    invoke-direct {p0, p2}, Lorg/apache/sshd/common/util/io/der/DERWriter;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/der/DERWriter$1;->val$baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 67
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/der/DERWriter$1;->val$dataWritten:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/der/DERWriter$1;->val$encloser:Lorg/apache/sshd/common/util/io/der/DERWriter;

    new-instance v7, Lorg/apache/sshd/common/util/io/der/ASN1Object;

    sget-object v2, Lorg/apache/sshd/common/util/io/der/ASN1Class;->UNIVERSAL:Lorg/apache/sshd/common/util/io/der/ASN1Class;

    sget-object v3, Lorg/apache/sshd/common/util/io/der/ASN1Type;->SEQUENCE:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/apache/sshd/common/util/io/der/DERWriter$1;->val$baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    iget-object v1, p0, Lorg/apache/sshd/common/util/io/der/DERWriter$1;->val$baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/apache/sshd/common/util/io/der/ASN1Object;-><init>(Lorg/apache/sshd/common/util/io/der/ASN1Class;Lorg/apache/sshd/common/util/io/der/ASN1Type;ZI[B)V

    invoke-virtual {v0, v7}, Lorg/apache/sshd/common/util/io/der/DERWriter;->writeObject(Lorg/apache/sshd/common/util/io/der/ASN1Object;)V

    .line 70
    :cond_0
    return-void
.end method
