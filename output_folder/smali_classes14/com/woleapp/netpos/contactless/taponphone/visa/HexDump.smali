.class public Lcom/woleapp/netpos/contactless/taponphone/visa/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/visa/HexDump;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toByteArray(B)[B
    .locals 2
    .param p0, "var0"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var0"
        }
    .end annotation

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 35
    .local v0, "var1":[B
    return-object v0
.end method

.method public static toHexString(B)Ljava/lang/String;
    .locals 1
    .param p0, "var0"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var0"
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/taponphone/visa/HexDump;->toByteArray(B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/taponphone/visa/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .locals 4
    .param p0, "var0"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var0"
        }
    .end annotation

    .line 30
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%08X"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "var0"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var0"
        }
    .end annotation

    .line 13
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/woleapp/netpos/contactless/taponphone/visa/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "var0"    # [B
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "var0",
            "var1",
            "var2"
        }
    .end annotation

    .line 17
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [C

    .line 18
    .local v0, "var3":[C
    const/4 v1, 0x0

    .line 20
    .local v1, "var4":I
    move v2, p1

    .local v2, "var5":I
    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_0

    .line 21
    aget-byte v3, p0, v2

    .line 22
    .local v3, "var6":B
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "var4":I
    .local v4, "var4":I
    sget-object v5, Lcom/woleapp/netpos/contactless/taponphone/visa/HexDump;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v0, v1

    .line 23
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "var4":I
    .restart local v1    # "var4":I
    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 20
    .end local v3    # "var6":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    .end local v2    # "var5":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
