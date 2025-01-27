.class final Lcom/visa/app/ttpkernel/ContactlessKernel$1;
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
        "Lcom/visa/app/ttpkernel/TtpOutcome;",
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

    .line 39
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 41
    sget-object v0, Lcom/visa/app/ttpkernel/TtpOutcome;->COMPLETED:Lcom/visa/app/ttpkernel/TtpOutcome;

    const-string v1, "COMPLETED"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/visa/app/ttpkernel/TtpOutcome;->ABORTED:Lcom/visa/app/ttpkernel/TtpOutcome;

    const-string v1, "TERMINATED"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/visa/app/ttpkernel/TtpOutcome;->DECLINED:Lcom/visa/app/ttpkernel/TtpOutcome;

    const-string v1, "DECLINED"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/visa/app/ttpkernel/TtpOutcome;->SELECTAGAIN:Lcom/visa/app/ttpkernel/TtpOutcome;

    const-string v1, "TRYAGAIN"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/visa/app/ttpkernel/TtpOutcome;->TRYNEXT:Lcom/visa/app/ttpkernel/TtpOutcome;

    const-string v1, "TRYNEXT"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method
