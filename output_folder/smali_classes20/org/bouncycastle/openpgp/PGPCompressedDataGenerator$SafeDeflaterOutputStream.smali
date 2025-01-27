.class Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SafeDeflaterOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;Ljava/io/OutputStream;IZ)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;->this$0:Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator;

    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1, p3, p4}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {p0, p2, p1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;->finish()V

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPCompressedDataGenerator$SafeDeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    return-void
.end method
