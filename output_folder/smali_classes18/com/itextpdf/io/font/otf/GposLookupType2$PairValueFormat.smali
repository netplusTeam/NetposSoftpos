.class Lcom/itextpdf/io/font/otf/GposLookupType2$PairValueFormat;
.super Ljava/lang/Object;
.source "GposLookupType2.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/otf/GposLookupType2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PairValueFormat"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5969b713550f3f97L


# instance fields
.field public first:Lcom/itextpdf/io/font/otf/GposValueRecord;

.field public second:Lcom/itextpdf/io/font/otf/GposValueRecord;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/io/font/otf/GposLookupType2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itextpdf/io/font/otf/GposLookupType2$1;

    .line 237
    invoke-direct {p0}, Lcom/itextpdf/io/font/otf/GposLookupType2$PairValueFormat;-><init>()V

    return-void
.end method
