.class public final synthetic Lorg/jline/widget/AutosuggestionWidgets$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jline/reader/Widget;


# instance fields
.field public final synthetic f$0:Lorg/jline/widget/AutosuggestionWidgets;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/widget/AutosuggestionWidgets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/widget/AutosuggestionWidgets$$ExternalSyntheticLambda0;->f$0:Lorg/jline/widget/AutosuggestionWidgets;

    return-void
.end method


# virtual methods
.method public final apply()Z
    .locals 1

    iget-object v0, p0, Lorg/jline/widget/AutosuggestionWidgets$$ExternalSyntheticLambda0;->f$0:Lorg/jline/widget/AutosuggestionWidgets;

    invoke-virtual {v0}, Lorg/jline/widget/AutosuggestionWidgets;->autosuggestForwardChar()Z

    move-result v0

    return v0
.end method
