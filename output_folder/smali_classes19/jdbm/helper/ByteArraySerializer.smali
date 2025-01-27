.class public final Ljdbm/helper/ByteArraySerializer;
.super Ljava/lang/Object;
.source "ByteArraySerializer.java"

# interfaces
.implements Ljdbm/helper/Serializer;


# static fields
.field public static final INSTANCE:Ljdbm/helper/ByteArraySerializer;

.field static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Ljdbm/helper/ByteArraySerializer;

    invoke-direct {v0}, Ljdbm/helper/ByteArraySerializer;-><init>()V

    sput-object v0, Ljdbm/helper/ByteArraySerializer;->INSTANCE:Ljdbm/helper/ByteArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize([B)Ljava/lang/Object;
    .locals 0
    .param p1, "serialized"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    return-object p1
.end method

.method public serialize(Ljava/lang/Object;)[B
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method
