.class public final synthetic Lorg/jline/widget/AutopairWidgets$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jline/reader/Widget;


# instance fields
.field public final synthetic f$0:Lorg/jline/widget/AutopairWidgets;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/widget/AutopairWidgets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/widget/AutopairWidgets$$ExternalSyntheticLambda0;->f$0:Lorg/jline/widget/AutopairWidgets;

    return-void
.end method


# virtual methods
.method public final apply()Z
    .locals 1

    iget-object v0, p0, Lorg/jline/widget/AutopairWidgets$$ExternalSyntheticLambda0;->f$0:Lorg/jline/widget/AutopairWidgets;

    invoke-virtual {v0}, Lorg/jline/widget/AutopairWidgets;->autopairInsert()Z

    move-result v0

    return v0
.end method
