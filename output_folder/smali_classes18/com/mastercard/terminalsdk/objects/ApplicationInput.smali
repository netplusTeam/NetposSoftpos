.class public interface abstract Lcom/mastercard/terminalsdk/objects/ApplicationInput;
.super Ljava/lang/Object;


# virtual methods
.method public abstract additionalTlvs()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;"
        }
    .end annotation
.end method

.method public abstract continueWithTransaction()Z
.end method

.method public abstract tagsToRead()[B
.end method

.method public abstract tlvsToWriteAfterGenAC()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;"
        }
    .end annotation
.end method

.method public abstract tlvsToWriteBeforeGenAC()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;"
        }
    .end annotation
.end method
