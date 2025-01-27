.class Lorg/bouncycastle/bcpg/StreamUtil;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_MEMORY:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lorg/bouncycastle/bcpg/StreamUtil;->MAX_MEMORY:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findLimit(Ljava/io/InputStream;)I
    .locals 5

    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Ljava/io/FileInputStream;

    const-wide/32 v1, 0x7fffffff

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long p0, v3, v1

    if-gez p0, :cond_2

    long-to-int p0, v3

    return p0

    :catch_0
    move-exception p0

    :cond_2
    sget-wide v3, Lorg/bouncycastle/bcpg/StreamUtil;->MAX_MEMORY:J

    cmp-long p0, v3, v1

    if-lez p0, :cond_3

    const p0, 0x7fffffff

    return p0

    :cond_3
    long-to-int p0, v3

    return p0
.end method
