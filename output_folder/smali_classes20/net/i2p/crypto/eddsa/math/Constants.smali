.class final Lnet/i2p/crypto/eddsa/math/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final EIGHT:[B

.field public static final FIVE:[B

.field public static final FOUR:[B

.field public static final ONE:[B

.field public static final TWO:[B

.field public static final ZERO:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-static {v0}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/i2p/crypto/eddsa/math/Constants;->ZERO:[B

    .line 18
    const-string v0, "0100000000000000000000000000000000000000000000000000000000000000"

    invoke-static {v0}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/i2p/crypto/eddsa/math/Constants;->ONE:[B

    .line 19
    const-string v0, "0200000000000000000000000000000000000000000000000000000000000000"

    invoke-static {v0}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/i2p/crypto/eddsa/math/Constants;->TWO:[B

    .line 20
    const-string v0, "0400000000000000000000000000000000000000000000000000000000000000"

    invoke-static {v0}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/i2p/crypto/eddsa/math/Constants;->FOUR:[B

    .line 21
    const-string v0, "0500000000000000000000000000000000000000000000000000000000000000"

    invoke-static {v0}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/i2p/crypto/eddsa/math/Constants;->FIVE:[B

    .line 22
    const-string v0, "0800000000000000000000000000000000000000000000000000000000000000"

    invoke-static {v0}, Lnet/i2p/crypto/eddsa/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/i2p/crypto/eddsa/math/Constants;->EIGHT:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
