.class final Lcom/visa/app/ttpkernel/ContactlessKernel$3;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/app/ttpkernel/ContactlessKernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 51
    sget-object v0, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->CVM_NOT_REQUIRED:Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    const-string v1, "CVMNotRequired"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->SIGNATURE:Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    const-string v1, "CVMSignature"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->ONLINE_PIN:Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    const-string v1, "CVMOnlinePIN"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->CVM_DECLINED:Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    const-string v1, "CVMDeclined"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method
