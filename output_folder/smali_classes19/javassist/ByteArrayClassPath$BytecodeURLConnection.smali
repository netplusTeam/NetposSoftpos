.class Ljavassist/ByteArrayClassPath$BytecodeURLConnection;
.super Ljava/net/URLConnection;
.source "ByteArrayClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/ByteArrayClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BytecodeURLConnection"
.end annotation


# instance fields
.field final synthetic this$0:Ljavassist/ByteArrayClassPath;


# direct methods
.method protected constructor <init>(Ljavassist/ByteArrayClassPath;Ljava/net/URL;)V
    .locals 0
    .param p2, "url"    # Ljava/net/URL;

    .line 107
    iput-object p1, p0, Ljavassist/ByteArrayClassPath$BytecodeURLConnection;->this$0:Ljavassist/ByteArrayClassPath;

    .line 108
    invoke-direct {p0, p2}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 109
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public getContentLength()I
    .locals 1

    .line 119
    iget-object v0, p0, Ljavassist/ByteArrayClassPath$BytecodeURLConnection;->this$0:Ljavassist/ByteArrayClassPath;

    iget-object v0, v0, Ljavassist/ByteArrayClassPath;->classfile:[B

    array-length v0, v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ljavassist/ByteArrayClassPath$BytecodeURLConnection;->this$0:Ljavassist/ByteArrayClassPath;

    iget-object v1, v1, Ljavassist/ByteArrayClassPath;->classfile:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
