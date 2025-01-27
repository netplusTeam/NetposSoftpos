.class public Lorg/jpos/iso/packager/X92GenericPackager;
.super Lorg/jpos/iso/packager/GenericPackager;
.source "X92GenericPackager.java"


# static fields
.field protected static bitMapPackager:Lorg/jpos/iso/ISOFieldPackager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lorg/jpos/iso/X92_BITMAP;

    const/16 v1, 0x10

    const-string v2, "X9.2 BIT MAP"

    invoke-direct {v0, v1, v2}, Lorg/jpos/iso/X92_BITMAP;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jpos/iso/packager/X92GenericPackager;->bitMapPackager:Lorg/jpos/iso/ISOFieldPackager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/jpos/iso/packager/GenericPackager;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lorg/jpos/iso/packager/GenericPackager;-><init>(Ljava/io/InputStream;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lorg/jpos/iso/packager/GenericPackager;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected emitBitMap()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected getBitMapfieldPackager()Lorg/jpos/iso/ISOFieldPackager;
    .locals 1

    .line 50
    sget-object v0, Lorg/jpos/iso/packager/X92GenericPackager;->bitMapPackager:Lorg/jpos/iso/ISOFieldPackager;

    return-object v0
.end method

.method protected getMaxValidField()I
    .locals 1

    .line 65
    const/16 v0, 0x40

    return v0
.end method
