.class Ljavassist/ByteArrayClassPath$BytecodeURLStreamHandler;
.super Ljava/net/URLStreamHandler;
.source "ByteArrayClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/ByteArrayClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BytecodeURLStreamHandler"
.end annotation


# instance fields
.field final synthetic this$0:Ljavassist/ByteArrayClassPath;


# direct methods
.method private constructor <init>(Ljavassist/ByteArrayClassPath;)V
    .locals 0

    .line 100
    iput-object p1, p0, Ljavassist/ByteArrayClassPath$BytecodeURLStreamHandler;->this$0:Ljavassist/ByteArrayClassPath;

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavassist/ByteArrayClassPath;Ljavassist/ByteArrayClassPath$1;)V
    .locals 0
    .param p1, "x0"    # Ljavassist/ByteArrayClassPath;
    .param p2, "x1"    # Ljavassist/ByteArrayClassPath$1;

    .line 100
    invoke-direct {p0, p1}, Ljavassist/ByteArrayClassPath$BytecodeURLStreamHandler;-><init>(Ljavassist/ByteArrayClassPath;)V

    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 2
    .param p1, "u"    # Ljava/net/URL;

    .line 102
    new-instance v0, Ljavassist/ByteArrayClassPath$BytecodeURLConnection;

    iget-object v1, p0, Ljavassist/ByteArrayClassPath$BytecodeURLStreamHandler;->this$0:Ljavassist/ByteArrayClassPath;

    invoke-direct {v0, v1, p1}, Ljavassist/ByteArrayClassPath$BytecodeURLConnection;-><init>(Ljavassist/ByteArrayClassPath;Ljava/net/URL;)V

    return-object v0
.end method
