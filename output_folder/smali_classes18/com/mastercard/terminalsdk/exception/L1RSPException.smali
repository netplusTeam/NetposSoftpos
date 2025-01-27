.class public final Lcom/mastercard/terminalsdk/exception/L1RSPException;
.super Ljava/lang/Exception;


# instance fields
.field private errorCode:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/mastercard/terminalsdk/exception/L1RSPException;->errorCode:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/exception/L1RSPException;->errorCode:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    return-object v0
.end method
