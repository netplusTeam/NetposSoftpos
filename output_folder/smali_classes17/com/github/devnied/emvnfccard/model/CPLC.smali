.class public Lcom/github/devnied/emvnfccard/model/CPLC;
.super Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;
.source "CPLC.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean<",
        "Lcom/github/devnied/emvnfccard/model/CPLC;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final SIZE:I = 0x2a

.field private static final serialVersionUID:J = -0x6e65e26cd70d91c0L


# instance fields
.field private ic_batch_id:Ljava/lang/Integer;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0x8
        size = 0x10
    .end annotation
.end field

.field private ic_embedding_date:Ljava/util/Date;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        dateStandard = 0x2
        index = 0xc
        size = 0x10
    .end annotation
.end field

.field private ic_fabric_date:Ljava/util/Date;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        dateStandard = 0x2
        index = 0x6
        size = 0x10
    .end annotation
.end field

.field private ic_fabricator:Ljava/lang/Integer;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0x1
        size = 0x10
    .end annotation
.end field

.field private ic_module_fabricator:Ljava/lang/Integer;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0x9
        size = 0x10
    .end annotation
.end field

.field private ic_packaging_date:Ljava/util/Date;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        dateStandard = 0x2
        index = 0xa
        size = 0x10
    .end annotation
.end field

.field private ic_serial_number:Ljava/lang/Integer;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0x7
        size = 0x20
    .end annotation
.end field

.field private ic_type:Ljava/lang/Integer;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0x2
        size = 0x10
    .end annotation
.end field

.field private icc_manufacturer:Ljava/lang/Integer;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0xb
        size = 0x10
    .end annotation
.end field

.field private os:Ljava/lang/Integer;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0x3
        size = 0x10
    .end annotation
.end field

.field private os_release_date:Ljava/util/Date;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        dateStandard = 0x2
        index = 0x4
        size = 0x10
    .end annotation
.end field

.field private os_release_level:Ljava/lang/Integer;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0x5
        size = 0x10
    .end annotation
.end field

.field private perso_date:Ljava/util/Date;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        dateStandard = 0x2
        index = 0x11
        size = 0x10
    .end annotation
.end field

.field private perso_equipment:Ljava/lang/Integer;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0x12
        size = 0x20
    .end annotation
.end field

.field private perso_id:Ljava/lang/Integer;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0x10
        size = 0x10
    .end annotation
.end field

.field private preperso_date:Ljava/util/Date;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        dateStandard = 0x2
        index = 0xe
        size = 0x10
    .end annotation
.end field

.field private preperso_equipment:Ljava/lang/Integer;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0xf
        size = 0x20
    .end annotation
.end field

.field private preperso_id:Ljava/lang/Integer;
    .annotation runtime Lcom/github/devnied/emvnfccard/parser/apdu/annotation/Data;
        index = 0xd
        size = 0x10
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/github/devnied/emvnfccard/parser/apdu/impl/AbstractByteBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcBatchId()Ljava/lang/Integer;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->ic_batch_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIcEmbeddingDate()Ljava/util/Date;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->ic_embedding_date:Ljava/util/Date;

    return-object v0
.end method

.method public getIcFabricDate()Ljava/util/Date;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->ic_fabric_date:Ljava/util/Date;

    return-object v0
.end method

.method public getIcFabricator()Ljava/lang/Integer;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->ic_fabricator:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIcModuleFabricator()Ljava/lang/Integer;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->ic_module_fabricator:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIcPackagingDate()Ljava/util/Date;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->ic_packaging_date:Ljava/util/Date;

    return-object v0
.end method

.method public getIcSerialNumber()Ljava/lang/Integer;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->ic_serial_number:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIcType()Ljava/lang/Integer;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->ic_type:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIccManufacturer()Ljava/lang/Integer;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->icc_manufacturer:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOs()Ljava/lang/Integer;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->os:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOsReleaseDate()Ljava/util/Date;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->os_release_date:Ljava/util/Date;

    return-object v0
.end method

.method public getOsReleaseLevel()Ljava/lang/Integer;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->os_release_level:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPersoDate()Ljava/util/Date;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->perso_date:Ljava/util/Date;

    return-object v0
.end method

.method public getPersoEquipment()Ljava/lang/Integer;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->perso_equipment:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPersoId()Ljava/lang/Integer;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->perso_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrepersoDate()Ljava/util/Date;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->preperso_date:Ljava/util/Date;

    return-object v0
.end method

.method public getPrepersoEquipment()Ljava/lang/Integer;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->preperso_equipment:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrepersoId()Ljava/lang/Integer;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/model/CPLC;->preperso_id:Ljava/lang/Integer;

    return-object v0
.end method
