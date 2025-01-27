.class Lcom/itextpdf/signatures/LtvVerification$ValidationData;
.super Ljava/lang/Object;
.source "LtvVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/signatures/LtvVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValidationData"
.end annotation


# instance fields
.field public certs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public crls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public ocsps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->crls:Ljava/util/List;

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->ocsps:Ljava/util/List;

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->certs:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/signatures/LtvVerification$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/itextpdf/signatures/LtvVerification$1;

    .line 482
    invoke-direct {p0}, Lcom/itextpdf/signatures/LtvVerification$ValidationData;-><init>()V

    return-void
.end method
