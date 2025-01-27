.class public Lch/qos/logback/core/net/ObjectWriterFactory;
.super Ljava/lang/Object;
.source "ObjectWriterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newAutoFlushingObjectWriter(Ljava/io/OutputStream;)Lch/qos/logback/core/net/AutoFlushingObjectWriter;
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Lch/qos/logback/core/net/AutoFlushingObjectWriter;

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x46

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/net/AutoFlushingObjectWriter;-><init>(Ljava/io/ObjectOutputStream;I)V

    return-object v0
.end method
