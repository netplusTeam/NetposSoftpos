.class public abstract Lcom/mastercard/terminalsdk/objects/CvmObject;
.super Ljava/lang/Object;


# instance fields
.field private e:Lcom/mastercard/terminalsdk/objects/CvmType;


# direct methods
.method public constructor <init>(Lcom/mastercard/terminalsdk/objects/CvmType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/CvmObject;->e:Lcom/mastercard/terminalsdk/objects/CvmType;

    return-void
.end method


# virtual methods
.method public getCvmType()Lcom/mastercard/terminalsdk/objects/CvmType;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/CvmObject;->e:Lcom/mastercard/terminalsdk/objects/CvmType;

    return-object v0
.end method

.method public abstract getPin()Ljava/lang/String;
.end method

.method public abstract getPinFormat()Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;
.end method
