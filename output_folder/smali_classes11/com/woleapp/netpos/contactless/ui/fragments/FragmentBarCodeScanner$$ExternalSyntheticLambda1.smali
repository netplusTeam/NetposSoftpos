.class public final synthetic Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/zxing/Result;

.field public final synthetic f$1:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/zxing/Result;Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda1;->f$0:Lcom/google/zxing/Result;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda1;->f$1:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;

    iput-object p3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda1;->f$0:Lcom/google/zxing/Result;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda1;->f$1:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda1;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->$r8$lambda$41MOpioZNVchMbG2JdoqQFuVR2Q(Lcom/google/zxing/Result;Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;)V

    return-void
.end method
