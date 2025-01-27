.class public Ljdbm/helper/LongSerializer;
.super Ljava/lang/Object;
.source "LongSerializer.java"

# interfaces
.implements Ljdbm/helper/Serializer;


# static fields
.field public static final INSTANCE:Ljdbm/helper/LongSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljdbm/helper/LongSerializer;

    invoke-direct {v0}, Ljdbm/helper/LongSerializer;-><init>()V

    sput-object v0, Ljdbm/helper/LongSerializer;->INSTANCE:Ljdbm/helper/LongSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public deserialize([B)Ljava/lang/Object;
    .locals 3
    .param p1, "serialized"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-static {p1}, Ljdbm/helper/Conversion;->convertToLong([B)J

    move-result-wide v0

    .line 98
    .local v0, "number":J
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object v2
.end method

.method public serialize(Ljava/lang/Object;)[B
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    .line 84
    .local v0, "number":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljdbm/helper/Conversion;->convertToByteArray(J)[B

    move-result-object v1

    return-object v1
.end method
