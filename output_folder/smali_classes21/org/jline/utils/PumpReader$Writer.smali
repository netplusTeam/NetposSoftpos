.class Lorg/jline/utils/PumpReader$Writer;
.super Ljava/io/Writer;
.source "PumpReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/utils/PumpReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Writer"
.end annotation


# instance fields
.field private final reader:Lorg/jline/utils/PumpReader;


# direct methods
.method private constructor <init>(Lorg/jline/utils/PumpReader;)V
    .locals 0
    .param p1, "reader"    # Lorg/jline/utils/PumpReader;

    .line 290
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 291
    iput-object p1, p0, Lorg/jline/utils/PumpReader$Writer;->reader:Lorg/jline/utils/PumpReader;

    .line 292
    return-void
.end method

.method synthetic constructor <init>(Lorg/jline/utils/PumpReader;Lorg/jline/utils/PumpReader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jline/utils/PumpReader;
    .param p2, "x1"    # Lorg/jline/utils/PumpReader$1;

    .line 286
    invoke-direct {p0, p1}, Lorg/jline/utils/PumpReader$Writer;-><init>(Lorg/jline/utils/PumpReader;)V

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

    .line 316
    iget-object v0, p0, Lorg/jline/utils/PumpReader$Writer;->reader:Lorg/jline/utils/PumpReader;

    invoke-virtual {v0}, Lorg/jline/utils/PumpReader;->close()V

    .line 317
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lorg/jline/utils/PumpReader$Writer;->reader:Lorg/jline/utils/PumpReader;

    invoke-virtual {v0}, Lorg/jline/utils/PumpReader;->flush()V

    .line 312
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lorg/jline/utils/PumpReader$Writer;->reader:Lorg/jline/utils/PumpReader;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lorg/jline/utils/PumpReader;->write(C)V

    .line 297
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lorg/jline/utils/PumpReader$Writer;->reader:Lorg/jline/utils/PumpReader;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jline/utils/PumpReader;->write(Ljava/lang/String;II)V

    .line 307
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lorg/jline/utils/PumpReader$Writer;->reader:Lorg/jline/utils/PumpReader;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jline/utils/PumpReader;->write([CII)V

    .line 302
    return-void
.end method
