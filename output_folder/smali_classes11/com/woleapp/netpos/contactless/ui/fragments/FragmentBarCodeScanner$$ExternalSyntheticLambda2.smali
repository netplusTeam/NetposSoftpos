.class public final synthetic Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/budiyev/android/codescanner/DecodeCallback;


# instance fields
.field public final synthetic f$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda2;->f$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDecoded(Lcom/google/zxing/Result;)V
    .locals 2

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda2;->f$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner$$ExternalSyntheticLambda2;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;->$r8$lambda$uTIe7UQNz28Ocy3foyZ9JudHy0w(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScanner;Landroid/view/View;Lcom/google/zxing/Result;)V

    return-void
.end method
