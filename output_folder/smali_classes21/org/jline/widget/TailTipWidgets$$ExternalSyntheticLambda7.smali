.class public final synthetic Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jline/reader/Widget;


# instance fields
.field public final synthetic f$0:Lorg/jline/widget/TailTipWidgets;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/widget/TailTipWidgets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda7;->f$0:Lorg/jline/widget/TailTipWidgets;

    return-void
.end method


# virtual methods
.method public final apply()Z
    .locals 1

    iget-object v0, p0, Lorg/jline/widget/TailTipWidgets$$ExternalSyntheticLambda7;->f$0:Lorg/jline/widget/TailTipWidgets;

    invoke-virtual {v0}, Lorg/jline/widget/TailTipWidgets;->tailtipKillWholeLine()Z

    move-result v0

    return v0
.end method
