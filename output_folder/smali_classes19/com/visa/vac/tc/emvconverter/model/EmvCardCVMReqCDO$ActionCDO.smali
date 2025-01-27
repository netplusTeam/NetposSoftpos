.class public Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionCDO"
.end annotation


# instance fields
.field Action:Ljava/lang/Object;

.field NextEntry:Ljava/lang/Object;

.field final synthetic this$0:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;->this$0:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;->NextEntry:Ljava/lang/Object;

    .line 190
    iput-object p3, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;->Action:Ljava/lang/Object;

    .line 191
    return-void
.end method
