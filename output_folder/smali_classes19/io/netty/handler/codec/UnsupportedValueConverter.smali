.class public final Lio/netty/handler/codec/UnsupportedValueConverter;
.super Ljava/lang/Object;
.source "UnsupportedValueConverter.java"

# interfaces
.implements Lio/netty/handler/codec/ValueConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/handler/codec/ValueConverter<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lio/netty/handler/codec/UnsupportedValueConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lio/netty/handler/codec/UnsupportedValueConverter;

    invoke-direct {v0}, Lio/netty/handler/codec/UnsupportedValueConverter;-><init>()V

    sput-object v0, Lio/netty/handler/codec/UnsupportedValueConverter;->INSTANCE:Lio/netty/handler/codec/UnsupportedValueConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lio/netty/handler/codec/UnsupportedValueConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/netty/handler/codec/UnsupportedValueConverter<",
            "TV;>;"
        }
    .end annotation

    .line 28
    sget-object v0, Lio/netty/handler/codec/UnsupportedValueConverter;->INSTANCE:Lio/netty/handler/codec/UnsupportedValueConverter;

    return-object v0
.end method


# virtual methods
.method public convertBoolean(Z)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TV;"
        }
    .end annotation

    .line 38
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertByte(B)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)TV;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertChar(C)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TV;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertDouble(D)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TV;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertFloat(F)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TV;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertInt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertLong(J)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 33
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertShort(S)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)TV;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertTimeMillis(J)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertToBoolean(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 43
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertToByte(Ljava/lang/Object;)B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)B"
        }
    .end annotation

    .line 53
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertToChar(Ljava/lang/Object;)C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)C"
        }
    .end annotation

    .line 63
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertToDouble(Ljava/lang/Object;)D
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)D"
        }
    .end annotation

    .line 123
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertToFloat(Ljava/lang/Object;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)F"
        }
    .end annotation

    .line 113
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertToInt(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 83
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertToLong(Ljava/lang/Object;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)J"
        }
    .end annotation

    .line 93
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertToShort(Ljava/lang/Object;)S
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)S"
        }
    .end annotation

    .line 73
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public convertToTimeMillis(Ljava/lang/Object;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)J"
        }
    .end annotation

    .line 103
    .local p0, "this":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
