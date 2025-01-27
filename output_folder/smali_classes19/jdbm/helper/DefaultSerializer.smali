.class public Ljdbm/helper/DefaultSerializer;
.super Ljava/lang/Object;
.source "DefaultSerializer.java"

# interfaces
.implements Ljdbm/helper/Serializer;


# static fields
.field public static final INSTANCE:Ljdbm/helper/DefaultSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljdbm/helper/DefaultSerializer;

    invoke-direct {v0}, Ljdbm/helper/DefaultSerializer;-><init>()V

    sput-object v0, Ljdbm/helper/DefaultSerializer;->INSTANCE:Ljdbm/helper/DefaultSerializer;

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
    :try_start_0
    invoke-static {p1}, Ljdbm/helper/Serialization;->deserialize([B)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "except":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljdbm/helper/WrappedRuntimeException;

    invoke-direct {v1, v0}, Ljdbm/helper/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public serialize(Ljava/lang/Object;)[B
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-static {p1}, Ljdbm/helper/Serialization;->serialize(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
