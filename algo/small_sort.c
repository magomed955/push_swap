/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   small_sort.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mmutsulk <mmutsulk@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/17 11:06:04 by mmutsulk          #+#    #+#             */
/*   Updated: 2025/02/17 11:06:04 by mmutsulk         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../push_swap.h"

void	sort_three(t_pile **pile_a)
{
	int	fst;
	int	scd;
	int	trd;

	fst = (*pile_a)->value;
	scd = (*pile_a)->next->value;
	trd = (*pile_a)->prev->value;
	if ((fst < scd) && (scd > trd) && (fst < trd))
	{
		reverse_rotate_a(pile_a, 1);
		swap_a(pile_a);
	}
	else if ((fst < scd) && (scd > trd) && (fst > trd))
		reverse_rotate_a(pile_a, 1);
	else if ((fst > scd) && (scd < trd) && (fst > trd))
		rotate_a(pile_a, 1);
	else if ((fst > scd) && (scd > trd))
	{
		swap_a(pile_a);
		reverse_rotate_a(pile_a, 1);
	}
	else
		swap_a(pile_a);
}
