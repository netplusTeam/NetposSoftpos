.class public Lch/qos/logback/core/net/AutoFlushingObjectWriter;
.super Ljava/lang/Object;
.source "AutoFlushingObjectWriter.java"

# interfaces
.implements Lch/qos/logback/core/net/ObjectWriter;


# instance fields
.field private final objectOutputStream:Ljava/io/ObjectOutputStream;

.field private final resetFrequency:I

.field private writeCounter:I


# direct methods
.method public constructor <init>(Ljava/io/ObjectOutputStream;I)V
    .locals 1
    .param p1, "objectOutputStream"    # Ljava/io/ObjectOutputStream;
    .param p2, "resetFrequency"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/net/AutoFlushingObjectWriter;->writeCounter:I

    .line 39
    iput-object p1, p0, Lch/qos/logback/core/net/AutoFlushingObjectWriter;->objectOutputStream:Ljava/io/ObjectOutputStream;

    .line 40
    iput p2, p0, Lch/qos/logback/core/net/AutoFlushingObjectWriter;->resetFrequency:I

    .line 41
    return-void
.end method

.method private preventMemoryLeak()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget v0, p0, Lch/qos/logback/core/net/AutoFlushingObjectWriter;->writeCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/qos/logback/core/net/AutoFlushingObjectWriter;->writeCounter:I

    iget v1, p0, Lch/qos/logback/core/net/AutoFlushingObjectWriter;->resetFrequency:I

    if-lt v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lch/qos/logback/core/net/AutoFlushingObjectWriter;->objectOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->reset()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/net/AutoFlushingObjectWriter;->writeCounter:I

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lch/qos/logback/core/net/AutoFlushingObjectWriter;->objectOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lch/qos/logback/core/net/AutoFlushingObjectWriter;->objectOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 47
    invoke-direct {p0}, Lch/qos/logback/core/net/AutoFlushingObjectWriter;->preventMemoryLeak()V

    .line 48
    return-void
.end method
