.class public Lpl/droidsonroids/relinker/elf/Dynamic32Structure;
.super Lpl/droidsonroids/relinker/elf/Elf$DynamicStructure;
.source "Dynamic32Structure.java"


# direct methods
.method public constructor <init>(Lpl/droidsonroids/relinker/elf/ElfParser;Lpl/droidsonroids/relinker/elf/Elf$Header;JI)V
    .locals 3
    .param p1, "parser"    # Lpl/droidsonroids/relinker/elf/ElfParser;
    .param p2, "header"    # Lpl/droidsonroids/relinker/elf/Elf$Header;
    .param p3, "baseOffset"    # J
    .param p5, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lpl/droidsonroids/relinker/elf/Elf$DynamicStructure;-><init>()V

    .line 25
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-boolean v1, p2, Lpl/droidsonroids/relinker/elf/Elf$Header;->bigEndian:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    mul-int/lit8 v1, p5, 0x8

    int-to-long v1, v1

    add-long/2addr p3, v1

    .line 29
    invoke-virtual {p1, v0, p3, p4}, Lpl/droidsonroids/relinker/elf/ElfParser;->readWord(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lpl/droidsonroids/relinker/elf/Dynamic32Structure;->tag:J

    .line 30
    const-wide/16 v1, 0x4

    add-long/2addr v1, p3

    invoke-virtual {p1, v0, v1, v2}, Lpl/droidsonroids/relinker/elf/ElfParser;->readWord(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lpl/droidsonroids/relinker/elf/Dynamic32Structure;->val:J

    .line 31
    return-void
.end method
