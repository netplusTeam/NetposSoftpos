.class public Lcom/itextpdf/kernel/pdf/StampingProperties;
.super Lcom/itextpdf/kernel/pdf/DocumentProperties;
.source "StampingProperties.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x54c444af0434ea31L


# instance fields
.field protected appendMode:Z

.field protected preserveEncryption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    .line 53
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/StampingProperties;->preserveEncryption:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/StampingProperties;)V
    .locals 1
    .param p1, "other"    # Lcom/itextpdf/kernel/pdf/StampingProperties;

    .line 59
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>(Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    .line 53
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/StampingProperties;->preserveEncryption:Z

    .line 60
    iget-boolean v0, p1, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    .line 61
    iget-boolean v0, p1, Lcom/itextpdf/kernel/pdf/StampingProperties;->preserveEncryption:Z

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/StampingProperties;->preserveEncryption:Z

    .line 62
    return-void
.end method


# virtual methods
.method public preserveEncryption()Lcom/itextpdf/kernel/pdf/StampingProperties;
    .locals 1

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/StampingProperties;->preserveEncryption:Z

    .line 80
    return-object p0
.end method

.method public useAppendMode()Lcom/itextpdf/kernel/pdf/StampingProperties;
    .locals 1

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    .line 70
    return-object p0
.end method
