.class public Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$EmptyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyViewHolder"
.end annotation


# instance fields
.field closeButton:Landroid/widget/Button;

.field emptyMessage:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;


# direct methods
.method public constructor <init>(Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "view"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$EmptyViewHolder;->this$0:Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter;

    .line 122
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 123
    const v0, 0x7f0a0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$EmptyViewHolder;->emptyMessage:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0a00cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$EmptyViewHolder;->closeButton:Landroid/widget/Button;

    .line 126
    new-instance v1, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$EmptyViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothAdapter$EmptyViewHolder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;

    .line 127
    invoke-static {}, Lcom/woleapp/netpos/contactless/cr100/widget/BluetoothExtKt;->hideBluetoothDialog()V

    .line 128
    return-void
.end method
