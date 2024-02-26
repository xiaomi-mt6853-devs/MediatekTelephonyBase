.class Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;
.super Ljava/lang/Object;
.source "PseudoCellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/PseudoCellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellInfo"
.end annotation


# instance fields
.field public blacklist arfcn:I

.field public blacklist bsic:I

.field public blacklist cid:I

.field public blacklist lac:I

.field public blacklist plmn:I

.field final synthetic blacklist this$0:Lcom/mediatek/internal/telephony/PseudoCellInfo;

.field public blacklist type:I


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/internal/telephony/PseudoCellInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/PseudoCellInfo;

    .line 34
    iput-object p1, p0, Lcom/mediatek/internal/telephony/PseudoCellInfo$CellInfo;->this$0:Lcom/mediatek/internal/telephony/PseudoCellInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
