.class public Ljdbm/helper/IntegerSerializer;
.super Ljava/lang/Object;
.source "IntegerSerializer.java"

# interfaces
.implements Ljdbm/helper/Serializer;


# static fields
.field public static final INSTANCE:Ljdbm/helper/IntegerSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljdbm/helper/IntegerSerializer;

    invoke-direct {v0}, Ljdbm/helper/IntegerSerializer;-><init>()V

    sput-object v0, Ljdbm/helper/IntegerSerializer;->INSTANCE:Ljdbm/helper/IntegerSerializer;

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
    .locals 2
    .param p1, "serialized"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-static {p1}, Ljdbm/helper/Conversion;->convertToInt([B)I

    move-result v0

    .line 98
    .local v0, "number":I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1
.end method

.method public serialize(Ljava/lang/Object;)[B
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 84
    .local v0, "number":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljdbm/helper/Conversion;->convertToByteArray(I)[B

    move-result-object v1

    return-object v1
.end method
