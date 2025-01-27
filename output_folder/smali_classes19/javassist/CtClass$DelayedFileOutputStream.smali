.class Ljavassist/CtClass$DelayedFileOutputStream;
.super Ljava/io/OutputStream;
.source "CtClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayedFileOutputStream"
.end annotation


# instance fields
.field private file:Ljava/io/FileOutputStream;

.field private filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1614
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1615
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    .line 1616
    iput-object p1, p0, Ljavassist/CtClass$DelayedFileOutputStream;->filename:Ljava/lang/String;

    .line 1617
    return-void
.end method

.method private init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1620
    iget-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    .line 1621
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Ljavassist/CtClass$DelayedFileOutputStream;->filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    .line 1622
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1651
    invoke-direct {p0}, Ljavassist/CtClass$DelayedFileOutputStream;->init()V

    .line 1652
    iget-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1653
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1645
    invoke-direct {p0}, Ljavassist/CtClass$DelayedFileOutputStream;->init()V

    .line 1646
    iget-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 1647
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1626
    invoke-direct {p0}, Ljavassist/CtClass$DelayedFileOutputStream;->init()V

    .line 1627
    iget-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 1628
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1632
    invoke-direct {p0}, Ljavassist/CtClass$DelayedFileOutputStream;->init()V

    .line 1633
    iget-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1634
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1638
    invoke-direct {p0}, Ljavassist/CtClass$DelayedFileOutputStream;->init()V

    .line 1639
    iget-object v0, p0, Ljavassist/CtClass$DelayedFileOutputStream;->file:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1641
    return-void
.end method
