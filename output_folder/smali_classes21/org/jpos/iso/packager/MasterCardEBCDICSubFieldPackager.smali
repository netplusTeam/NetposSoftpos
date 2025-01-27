.class public Lorg/jpos/iso/packager/MasterCardEBCDICSubFieldPackager;
.super Lorg/jpos/iso/packager/EuroSubFieldPackager;
.source "MasterCardEBCDICSubFieldPackager.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/jpos/iso/packager/EuroSubFieldPackager;-><init>()V

    .line 46
    sget-object v0, Lorg/jpos/iso/EbcdicPrefixer;->LL:Lorg/jpos/iso/EbcdicPrefixer;

    sput-object v0, Lorg/jpos/iso/packager/MasterCardEBCDICSubFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 47
    return-void
.end method
