.class public Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;
.super Ljava/lang/Object;
.source "MtkSmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NationalLanguageShift"
.end annotation


# instance fields
.field public blacklist lockingShiftId:I

.field public blacklist singleShiftId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;->singleShiftId:I

    .line 63
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSmsHeader$NationalLanguageShift;->lockingShiftId:I

    return-void
.end method
