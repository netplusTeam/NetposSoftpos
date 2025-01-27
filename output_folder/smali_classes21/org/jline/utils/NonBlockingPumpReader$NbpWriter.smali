.class Lorg/jline/utils/NonBlockingPumpReader$NbpWriter;
.super Ljava/io/Writer;
.source "NonBlockingPumpReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/utils/NonBlockingPumpReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NbpWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jline/utils/NonBlockingPumpReader;


# direct methods
.method private constructor <init>(Lorg/jline/utils/NonBlockingPumpReader;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/jline/utils/NonBlockingPumpReader$NbpWriter;->this$0:Lorg/jline/utils/NonBlockingPumpReader;

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jline/utils/NonBlockingPumpReader;Lorg/jline/utils/NonBlockingPumpReader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jline/utils/NonBlockingPumpReader;
    .param p2, "x1"    # Lorg/jline/utils/NonBlockingPumpReader$1;

    .line 194
    invoke-direct {p0, p1}, Lorg/jline/utils/NonBlockingPumpReader$NbpWriter;-><init>(Lorg/jline/utils/NonBlockingPumpReader;)V

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

    .line 207
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpReader$NbpWriter;->this$0:Lorg/jline/utils/NonBlockingPumpReader;

    invoke-virtual {v0}, Lorg/jline/utils/NonBlockingPumpReader;->close()V

    .line 208
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
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

    .line 198
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpReader$NbpWriter;->this$0:Lorg/jline/utils/NonBlockingPumpReader;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jline/utils/NonBlockingPumpReader;->write([CII)V

    .line 199
    return-void
.end method
