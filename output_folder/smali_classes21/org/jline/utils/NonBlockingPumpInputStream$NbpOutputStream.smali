.class Lorg/jline/utils/NonBlockingPumpInputStream$NbpOutputStream;
.super Ljava/io/OutputStream;
.source "NonBlockingPumpInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/utils/NonBlockingPumpInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NbpOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jline/utils/NonBlockingPumpInputStream;


# direct methods
.method private constructor <init>(Lorg/jline/utils/NonBlockingPumpInputStream;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/jline/utils/NonBlockingPumpInputStream$NbpOutputStream;->this$0:Lorg/jline/utils/NonBlockingPumpInputStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jline/utils/NonBlockingPumpInputStream;Lorg/jline/utils/NonBlockingPumpInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jline/utils/NonBlockingPumpInputStream;
    .param p2, "x1"    # Lorg/jline/utils/NonBlockingPumpInputStream$1;

    .line 165
    invoke-direct {p0, p1}, Lorg/jline/utils/NonBlockingPumpInputStream$NbpOutputStream;-><init>(Lorg/jline/utils/NonBlockingPumpInputStream;)V

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

    .line 184
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpInputStream$NbpOutputStream;->this$0:Lorg/jline/utils/NonBlockingPumpInputStream;

    invoke-virtual {v0}, Lorg/jline/utils/NonBlockingPumpInputStream;->close()V

    .line 185
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpInputStream$NbpOutputStream;->this$0:Lorg/jline/utils/NonBlockingPumpInputStream;

    invoke-virtual {v0}, Lorg/jline/utils/NonBlockingPumpInputStream;->flush()V

    .line 180
    return-void
.end method

.method public write(I)V
    .locals 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpInputStream$NbpOutputStream;->this$0:Lorg/jline/utils/NonBlockingPumpInputStream;

    const/4 v1, 0x1

    new-array v2, v1, [B

    int-to-byte v3, p1

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-virtual {v0, v2, v4, v1}, Lorg/jline/utils/NonBlockingPumpInputStream;->write([BII)V

    .line 170
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "cbuf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lorg/jline/utils/NonBlockingPumpInputStream$NbpOutputStream;->this$0:Lorg/jline/utils/NonBlockingPumpInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jline/utils/NonBlockingPumpInputStream;->write([BII)V

    .line 175
    return-void
.end method
