.class Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOStreamIOAdapter;
.super Ljava/lang/Object;
.source "ServiceHandshake.java"

# interfaces
.implements Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IOStreamIOAdapter"
.end annotation


# instance fields
.field private final dataInputStream:Ljava/io/DataInputStream;

.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOStreamIOAdapter;->dataInputStream:Ljava/io/DataInputStream;

    .line 1080
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOStreamIOAdapter;->outputStream:Ljava/io/OutputStream;

    .line 1081
    return-void
.end method


# virtual methods
.method public read([B)I
    .locals 1
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1085
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOStreamIOAdapter;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1086
    array-length v0, p1

    return v0
.end method

.method public write([B)I
    .locals 1
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOStreamIOAdapter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1092
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$IOStreamIOAdapter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1093
    array-length v0, p1

    return v0
.end method
