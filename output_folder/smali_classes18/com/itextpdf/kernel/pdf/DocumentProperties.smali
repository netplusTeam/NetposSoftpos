.class public Lcom/itextpdf/kernel/pdf/DocumentProperties;
.super Ljava/lang/Object;
.source "DocumentProperties.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5bf2ef73c04fcaaeL


# instance fields
.field protected metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/DocumentProperties;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    .locals 1
    .param p1, "other"    # Lcom/itextpdf/kernel/pdf/DocumentProperties;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/DocumentProperties;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    .line 60
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/DocumentProperties;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/DocumentProperties;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    .line 61
    return-void
.end method


# virtual methods
.method public setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;
    .locals 0
    .param p1, "metaInfo"    # Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    .line 71
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/DocumentProperties;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    .line 72
    return-object p0
.end method
